.class Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter;
.super Landroid/widget/BaseAdapter;
.source "MarketPlaceListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lic/buzzebeeslib/fragment/MarketPlaceListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MarketPlace3Adapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;
    }
.end annotation


# instance fields
.field private formatter:Ljava/text/NumberFormat;

.field private formatterHasDigi:Ljava/text/NumberFormat;

.field private gInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lic/buzzebeeslib/fragment/MarketPlaceListFragment;


# direct methods
.method public constructor <init>(Lic/buzzebeeslib/fragment/MarketPlaceListFragment;Landroid/content/Context;)V
    .registers 5
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 1087
    iput-object p1, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceListFragment;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 1084
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "###,###,###"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter;->formatter:Ljava/text/NumberFormat;

    .line 1085
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "###,###,###.##"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter;->formatterHasDigi:Ljava/text/NumberFormat;

    .line 1088
    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter;->gInflater:Landroid/view/LayoutInflater;

    .line 1090
    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 1093
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceListFragment;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gCampaignViews:Ljava/util/ArrayList;
    invoke-static {v0}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->access$6(Lic/buzzebeeslib/fragment/MarketPlaceListFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lic/buzzebeeslib/bean/Campaign;
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 1097
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceListFragment;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gCampaignViews:Ljava/util/ArrayList;
    invoke-static {v0}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->access$6(Lic/buzzebeeslib/fragment/MarketPlaceListFragment;)Ljava/util/ArrayList;

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
    invoke-virtual {p0, p1}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter;->getItem(I)Lic/buzzebeeslib/bean/Campaign;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .param p1, "position"    # I

    .prologue
    .line 1101
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 20
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 1136
    const/4 v7, 0x0

    .line 1138
    .local v7, "campaign":Lic/buzzebeeslib/bean/Campaign;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceListFragment;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gCampaignViews:Ljava/util/ArrayList;
    invoke-static {v1}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->access$6(Lic/buzzebeeslib/fragment/MarketPlaceListFragment;)Ljava/util/ArrayList;

    move-result-object v1

    move/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lic/buzzebeeslib/bean/Campaign;

    invoke-virtual {v1}, Lic/buzzebeeslib/bean/Campaign;->clone()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lic/buzzebeeslib/bean/Campaign;

    move-object v7, v0
    :try_end_19
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_19} :catch_43e

    .line 1143
    :goto_19
    const/4 v12, 0x0

    .line 1144
    .local v12, "holder":Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;
    move-object/from16 v15, p2

    .line 1146
    .local v15, "view":Landroid/view/View;
    if-eqz p2, :cond_24

    invoke-virtual {v15}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_444

    .line 1148
    :cond_24
    move-object/from16 v0, p0

    iget-object v1, v0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter;->gInflater:Landroid/view/LayoutInflater;

    sget v2, Lic/buzzebeeslib/R$layout;->bz_market_place_list_row:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v15

    .line 1149
    new-instance v12, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;

    .end local v12    # "holder":Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;
    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-direct {v12, v0, v1}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;-><init>(Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter;Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;)V

    .line 1150
    .restart local v12    # "holder":Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;
    sget v1, Lic/buzzebeeslib/R$id;->imgCampaignThumb:I

    invoke-virtual {v15, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v12, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->imgCampaignThumb:Landroid/widget/ImageView;

    .line 1151
    sget v1, Lic/buzzebeeslib/R$id;->imgCampaign:I

    invoke-virtual {v15, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v12, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->imgCampaign:Landroid/widget/ImageView;

    .line 1152
    sget v1, Lic/buzzebeeslib/R$id;->imgRibbon:I

    invoke-virtual {v15, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v12, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->imgRibbon:Landroid/widget/ImageView;

    .line 1153
    sget v1, Lic/buzzebeeslib/R$id;->tvCaption:I

    invoke-virtual {v15, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v12, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvCaption:Landroid/widget/TextView;

    .line 1154
    sget v1, Lic/buzzebeeslib/R$id;->tvHeader:I

    invoke-virtual {v15, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v12, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvHeader:Landroid/widget/TextView;

    .line 1155
    sget v1, Lic/buzzebeeslib/R$id;->tvDescription:I

    invoke-virtual {v15, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v12, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvDescription:Landroid/widget/TextView;

    .line 1156
    sget v1, Lic/buzzebeeslib/R$id;->tvDiscountNumber:I

    invoke-virtual {v15, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v12, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvDiscountNumber:Landroid/widget/TextView;

    .line 1157
    sget v1, Lic/buzzebeeslib/R$id;->imgPoint:I

    invoke-virtual {v15, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v12, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->imgPoint:Landroid/widget/ImageView;

    .line 1158
    sget v1, Lic/buzzebeeslib/R$id;->tvPointNumber:I

    invoke-virtual {v15, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v12, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvPointNumber:Landroid/widget/TextView;

    .line 1159
    sget v1, Lic/buzzebeeslib/R$id;->tvPriceNumber:I

    invoke-virtual {v15, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v12, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvPriceNumber:Landroid/widget/TextView;

    .line 1160
    sget v1, Lic/buzzebeeslib/R$id;->tvRemainNumber:I

    invoke-virtual {v15, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v12, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvRemainNumber:Landroid/widget/TextView;

    .line 1161
    sget v1, Lic/buzzebeeslib/R$id;->tvTimeNumber:I

    invoke-virtual {v15, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v12, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvTimeNumber:Landroid/widget/TextView;

    .line 1162
    sget v1, Lic/buzzebeeslib/R$id;->layoutRight:I

    invoke-virtual {v15, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, v12, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->layoutRight:Landroid/widget/RelativeLayout;

    .line 1164
    sget v1, Lic/buzzebeeslib/R$id;->tvDiscountCaption:I

    invoke-virtual {v15, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v12, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvDiscountCaption:Landroid/widget/TextView;

    .line 1165
    sget v1, Lic/buzzebeeslib/R$id;->tvPointCaption:I

    invoke-virtual {v15, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v12, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvPointCaption:Landroid/widget/TextView;

    .line 1166
    sget v1, Lic/buzzebeeslib/R$id;->tvPriceCaption:I

    invoke-virtual {v15, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v12, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvPriceCaption:Landroid/widget/TextView;

    .line 1167
    sget v1, Lic/buzzebeeslib/R$id;->tvRemainCaption:I

    invoke-virtual {v15, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v12, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvRemainCaption:Landroid/widget/TextView;

    .line 1168
    sget v1, Lic/buzzebeeslib/R$id;->tvTimeCaption:I

    invoke-virtual {v15, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v12, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvTimeCaption:Landroid/widget/TextView;

    .line 1170
    sget v1, Lic/buzzebeeslib/R$id;->layoutRightAdBuzz:I

    invoke-virtual {v15, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, v12, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->layoutRightAdBuzz:Landroid/widget/RelativeLayout;

    .line 1171
    sget v1, Lic/buzzebeeslib/R$id;->tvAddPointsAdBuzz:I

    invoke-virtual {v15, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v12, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvAddPointsAdBuzz:Landroid/widget/TextView;

    .line 1172
    sget v1, Lic/buzzebeeslib/R$id;->tvPointNumberAdBuzz:I

    invoke-virtual {v15, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v12, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvPointNumberAdBuzz:Landroid/widget/TextView;

    .line 1173
    sget v1, Lic/buzzebeeslib/R$id;->imgRemainAdBuzz:I

    invoke-virtual {v15, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v12, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->imgRemainAdBuzz:Landroid/widget/ImageView;

    .line 1174
    sget v1, Lic/buzzebeeslib/R$id;->tvRemainCaptionAdBuzz:I

    invoke-virtual {v15, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v12, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvRemainCaptionAdBuzz:Landroid/widget/TextView;

    .line 1175
    sget v1, Lic/buzzebeeslib/R$id;->tvRemainNumberAdBuzz:I

    invoke-virtual {v15, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v12, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvRemainNumberAdBuzz:Landroid/widget/TextView;

    .line 1176
    sget v1, Lic/buzzebeeslib/R$id;->tvTimeCaptionAdBuzz:I

    invoke-virtual {v15, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v12, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvTimeCaptionAdBuzz:Landroid/widget/TextView;

    .line 1177
    sget v1, Lic/buzzebeeslib/R$id;->tvTimeNumberAdBuzz:I

    invoke-virtual {v15, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v12, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvTimeNumberAdBuzz:Landroid/widget/TextView;

    .line 1179
    invoke-virtual {v15, v12}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1186
    :goto_13e
    :try_start_13e
    move-object/from16 v0, p0

    iget-object v1, v0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceListFragment;

    invoke-virtual {v1}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "fonts/kit55p.ttf"

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v11

    .line 1188
    .local v11, "font":Landroid/graphics/Typeface;
    iget-object v1, v12, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvCaption:Landroid/widget/TextView;

    invoke-virtual {v1, v11}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1189
    iget-object v1, v12, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvHeader:Landroid/widget/TextView;

    invoke-virtual {v1, v11}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1190
    iget-object v1, v12, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvDescription:Landroid/widget/TextView;

    invoke-virtual {v1, v11}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1191
    iget-object v1, v12, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvDiscountNumber:Landroid/widget/TextView;

    invoke-virtual {v1, v11}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1192
    iget-object v1, v12, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvPointNumber:Landroid/widget/TextView;

    invoke-virtual {v1, v11}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1193
    iget-object v1, v12, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvPriceNumber:Landroid/widget/TextView;

    invoke-virtual {v1, v11}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1194
    iget-object v1, v12, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvRemainNumber:Landroid/widget/TextView;

    invoke-virtual {v1, v11}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1195
    iget-object v1, v12, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvTimeNumber:Landroid/widget/TextView;

    invoke-virtual {v1, v11}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1197
    iget-object v1, v12, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvDiscountCaption:Landroid/widget/TextView;

    invoke-virtual {v1, v11}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1198
    iget-object v1, v12, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvPointCaption:Landroid/widget/TextView;

    invoke-virtual {v1, v11}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1199
    iget-object v1, v12, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvPriceCaption:Landroid/widget/TextView;

    invoke-virtual {v1, v11}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1200
    iget-object v1, v12, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvRemainCaption:Landroid/widget/TextView;

    invoke-virtual {v1, v11}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1201
    iget-object v1, v12, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvTimeCaption:Landroid/widget/TextView;

    invoke-virtual {v1, v11}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1203
    iget-object v1, v12, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvAddPointsAdBuzz:Landroid/widget/TextView;

    invoke-virtual {v1, v11}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1204
    iget-object v1, v12, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvPointNumberAdBuzz:Landroid/widget/TextView;

    invoke-virtual {v1, v11}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1205
    iget-object v1, v12, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvRemainCaptionAdBuzz:Landroid/widget/TextView;

    invoke-virtual {v1, v11}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1206
    iget-object v1, v12, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvRemainNumberAdBuzz:Landroid/widget/TextView;

    invoke-virtual {v1, v11}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1207
    iget-object v1, v12, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvTimeCaptionAdBuzz:Landroid/widget/TextView;

    invoke-virtual {v1, v11}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1208
    iget-object v1, v12, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvTimeNumberAdBuzz:Landroid/widget/TextView;

    invoke-virtual {v1, v11}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V
    :try_end_1af
    .catch Ljava/lang/Exception; {:try_start_13e .. :try_end_1af} :catch_67c

    .line 1213
    .end local v11    # "font":Landroid/graphics/Typeface;
    :goto_1af
    iget-object v1, v12, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvHeader:Landroid/widget/TextView;

    iget-object v2, v7, Lic/buzzebeeslib/bean/Campaign;->AgencyName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1214
    iget-object v1, v12, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvDescription:Landroid/widget/TextView;

    iget-object v2, v7, Lic/buzzebeeslib/bean/Campaign;->Name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1215
    iget-object v1, v12, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvDiscountNumber:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter;->formatter:Ljava/text/NumberFormat;

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

    const-string v3, " %"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1216
    iget-object v1, v12, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvPointNumber:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter;->formatterHasDigi:Ljava/text/NumberFormat;

    iget-object v3, v7, Lic/buzzebeeslib/bean/Campaign;->PointPerUnit:Ljava/lang/String;

    invoke-static {v3}, Lic/buzzebeeslib/util/BBUtil;->CTypeDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/NumberFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1217
    iget-object v1, v12, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvPointNumberAdBuzz:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter;->formatterHasDigi:Ljava/text/NumberFormat;

    iget-object v3, v7, Lic/buzzebeeslib/bean/Campaign;->PointPerUnit:Ljava/lang/String;

    invoke-static {v3}, Lic/buzzebeeslib/util/BBUtil;->CTypeDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/NumberFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1218
    iget-object v1, v12, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvPriceNumber:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter;->formatterHasDigi:Ljava/text/NumberFormat;

    iget-object v3, v7, Lic/buzzebeeslib/bean/Campaign;->PricePerUnit:Ljava/lang/String;

    invoke-static {v3}, Lic/buzzebeeslib/util/BBUtil;->CTypeDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/NumberFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1220
    move-object/from16 v0, p0

    iget-object v1, v0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceListFragment;

    invoke-virtual {v1}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_260

    .line 1221
    move-object/from16 v0, p0

    iget-object v1, v0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceListFragment;

    invoke-virtual {v1}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v1, v1, 0xf

    const/4 v2, 0x1

    if-ne v1, v2, :cond_454

    .line 1222
    iget-object v1, v7, Lic/buzzebeeslib/bean/Campaign;->PointPerUnit:Ljava/lang/String;

    invoke-static {v1}, Lic/buzzebeeslib/util/BBUtil;->CTypeDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    const-wide v3, 0x40f86a0000000000L

    cmpl-double v1, v1, v3

    if-ltz v1, :cond_44c

    .line 1223
    iget-object v1, v12, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->imgPoint:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1242
    :cond_260
    :goto_260
    iget-wide v1, v7, Lic/buzzebeeslib/bean/Campaign;->Qty:J

    long-to-double v8, v1

    .line 1243
    .local v8, "dblRemaining":D
    iget-boolean v1, v7, Lic/buzzebeeslib/bean/Campaign;->isFromNoti:Z

    if-eqz v1, :cond_26a

    .line 1244
    iget v1, v7, Lic/buzzebeeslib/bean/Campaign;->ItemRemain:I

    int-to-double v8, v1

    .line 1247
    :cond_26a
    sget v1, Lic/buzzebeeslib/util/ThemesUtil;->gTheme:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4eb

    .line 1248
    const-wide/16 v1, 0x0

    cmpl-double v1, v8, v1

    if-lez v1, :cond_4a3

    .line 1249
    iget-object v1, v12, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvRemainNumber:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter;->formatterHasDigi:Ljava/text/NumberFormat;

    invoke-virtual {v2, v8, v9}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1250
    iget-object v1, v12, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvRemainNumber:Landroid/widget/TextView;

    const-string v2, "#ffffff"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1251
    iget-object v1, v12, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvRemainNumberAdBuzz:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter;->formatterHasDigi:Ljava/text/NumberFormat;

    invoke-virtual {v2, v8, v9}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1252
    iget-object v1, v12, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvRemainNumberAdBuzz:Landroid/widget/TextView;

    const-string v2, "#ff764814"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1291
    :goto_2a5
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

    if-lez v1, :cond_5bf

    .line 1292
    move-object/from16 v0, p0

    iget-object v1, v0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceListFragment;

    invoke-virtual {v1}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_322

    .line 1293
    iget-object v1, v12, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvTimeNumber:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, v7, Lic/buzzebeeslib/bean/Campaign;->DayRemain:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceListFragment;

    invoke-virtual {v3}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    sget v4, Lic/buzzebeeslib/R$string;->market_days:I

    invoke-virtual {v3, v4}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1294
    iget-object v1, v12, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvTimeNumberAdBuzz:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, v7, Lic/buzzebeeslib/bean/Campaign;->DayRemain:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceListFragment;

    invoke-virtual {v3}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    sget v4, Lic/buzzebeeslib/R$string;->market_days:I

    invoke-virtual {v3, v4}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1297
    :cond_322
    iget-object v1, v12, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvTimeNumber:Landroid/widget/TextView;

    const-string v2, "#ffffff"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1298
    iget-object v1, v12, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvTimeNumberAdBuzz:Landroid/widget/TextView;

    const-string v2, "#ff764814"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1311
    :goto_338
    iget-wide v1, v7, Lic/buzzebeeslib/bean/Campaign;->Qty:J

    long-to-double v13, v1

    .line 1313
    .local v13, "intRemain":D
    move-object/from16 v0, p0

    iget-object v1, v0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceListFragment;

    invoke-virtual {v1}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_395

    .line 1314
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

    if-lez v1, :cond_607

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

    if-ge v1, v2, :cond_607

    .line 1315
    iget-object v1, v12, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->imgRibbon:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1316
    iget-object v1, v12, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->imgRibbon:Landroid/widget/ImageView;

    sget v2, Lic/buzzebeeslib/R$drawable;->bz_ribbon_dayremain:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceListFragment;

    invoke-virtual {v3}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lic/buzzebeeslib/util/BBUtil;->setImageResource(Landroid/widget/ImageView;ILandroid/content/Context;)V

    .line 1328
    :cond_395
    :goto_395
    iget-object v1, v7, Lic/buzzebeeslib/bean/Campaign;->Caption:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_65d

    .line 1329
    iget-object v1, v12, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvCaption:Landroid/widget/TextView;

    iget-object v2, v7, Lic/buzzebeeslib/bean/Campaign;->Caption:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1330
    iget-object v1, v12, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvCaption:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1351
    :goto_3ad
    move-object/from16 v0, p0

    iget-object v1, v0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceListFragment;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;
    invoke-static {v1}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->access$8(Lic/buzzebeeslib/fragment/MarketPlaceListFragment;)Lcom/bitmapfun/util/ImageFetcher;

    move-result-object v1

    invoke-virtual {v7}, Lic/buzzebeeslib/bean/Campaign;->FullImageUrlThumb()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v12, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->imgCampaignThumb:Landroid/widget/ImageView;

    const/4 v4, 0x0

    sget v5, Lic/buzzebeeslib/R$drawable;->t1_1:I

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/bitmapfun/util/ImageFetcher;->loadImage(Ljava/lang/Object;Landroid/widget/ImageView;Landroid/widget/ProgressBar;IZ)V

    .line 1352
    iget-object v1, v12, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->imgCampaign:Landroid/widget/ImageView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1353
    move-object/from16 v0, p0

    iget-object v1, v0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceListFragment;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;
    invoke-static {v1}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->access$8(Lic/buzzebeeslib/fragment/MarketPlaceListFragment;)Lcom/bitmapfun/util/ImageFetcher;

    move-result-object v1

    invoke-virtual {v7}, Lic/buzzebeeslib/bean/Campaign;->FullImageUrlLarge()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v12, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->imgCampaign:Landroid/widget/ImageView;

    const/4 v4, 0x0

    sget v5, Lic/buzzebeeslib/R$drawable;->t1_1:I

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/bitmapfun/util/ImageFetcher;->loadImage(Ljava/lang/Object;Landroid/widget/ImageView;Landroid/widget/ProgressBar;IZ)V

    .line 1355
    iget-object v1, v7, Lic/buzzebeeslib/bean/Campaign;->Type:Ljava/lang/String;

    const-string v2, "5"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3f1

    iget-object v1, v7, Lic/buzzebeeslib/bean/Campaign;->Type:Ljava/lang/String;

    const-string v2, "6"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_66d

    .line 1356
    :cond_3f1
    iget-object v1, v12, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->layoutRight:Landroid/widget/RelativeLayout;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1357
    iget-object v1, v12, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->layoutRightAdBuzz:Landroid/widget/RelativeLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1358
    iget-object v1, v12, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->imgRemainAdBuzz:Landroid/widget/ImageView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1359
    iget-object v1, v12, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvRemainCaptionAdBuzz:Landroid/widget/TextView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1360
    iget-object v1, v12, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvRemainNumberAdBuzz:Landroid/widget/TextView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1361
    move-object/from16 v0, p0

    iget-object v1, v0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceListFragment;

    invoke-virtual {v1}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_43d

    .line 1362
    move-object/from16 v0, p0

    iget-object v1, v0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceListFragment;

    invoke-virtual {v1}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lic/buzzebeeslib/LibUserLogin;->IS_ADMIN(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_43d

    .line 1363
    iget-object v1, v12, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->imgRemainAdBuzz:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1364
    iget-object v1, v12, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvRemainCaptionAdBuzz:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1365
    iget-object v1, v12, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvRemainNumberAdBuzz:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1373
    :cond_43d
    :goto_43d
    return-object v15

    .line 1139
    .end local v8    # "dblRemaining":D
    .end local v12    # "holder":Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;
    .end local v13    # "intRemain":D
    .end local v15    # "view":Landroid/view/View;
    :catch_43e
    move-exception v10

    .line 1140
    .local v10, "e1":Ljava/lang/CloneNotSupportedException;
    invoke-virtual {v10}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V

    goto/16 :goto_19

    .line 1181
    .end local v10    # "e1":Ljava/lang/CloneNotSupportedException;
    .restart local v12    # "holder":Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;
    .restart local v15    # "view":Landroid/view/View;
    :cond_444
    invoke-virtual {v15}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v12

    .end local v12    # "holder":Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;
    check-cast v12, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;

    .restart local v12    # "holder":Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;
    goto/16 :goto_13e

    .line 1225
    :cond_44c
    iget-object v1, v12, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->imgPoint:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_260

    .line 1227
    :cond_454
    move-object/from16 v0, p0

    iget-object v1, v0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceListFragment;

    invoke-virtual {v1}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v1, v1, 0xf

    const/4 v2, 0x2

    if-ne v1, v2, :cond_49b

    .line 1228
    iget-object v1, v7, Lic/buzzebeeslib/bean/Campaign;->PointPerUnit:Ljava/lang/String;

    invoke-static {v1}, Lic/buzzebeeslib/util/BBUtil;->CTypeDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    const-wide v3, 0x40f86a0000000000L

    cmpl-double v1, v1, v3

    if-ltz v1, :cond_493

    .line 1229
    move-object/from16 v0, p0

    iget-object v1, v0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceListFragment;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gDpi:I
    invoke-static {v1}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->access$7(Lic/buzzebeeslib/fragment/MarketPlaceListFragment;)I

    move-result v1

    const/16 v2, 0xf0

    if-gt v1, v2, :cond_260

    .line 1230
    iget-object v1, v12, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->imgPoint:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_260

    .line 1233
    :cond_493
    iget-object v1, v12, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->imgPoint:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_260

    .line 1236
    :cond_49b
    iget-object v1, v12, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->imgPoint:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_260

    .line 1254
    .restart local v8    # "dblRemaining":D
    :cond_4a3
    move-object/from16 v0, p0

    iget-object v1, v0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceListFragment;

    invoke-virtual {v1}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_4d3

    .line 1255
    iget-object v1, v12, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvRemainNumber:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceListFragment;

    invoke-virtual {v2}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    sget v3, Lic/buzzebeeslib/R$string;->market_soldout:I

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1256
    iget-object v1, v12, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvRemainNumberAdBuzz:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceListFragment;

    invoke-virtual {v2}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    sget v3, Lic/buzzebeeslib/R$string;->market_soldout:I

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1258
    :cond_4d3
    iget-object v1, v12, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvRemainNumber:Landroid/widget/TextView;

    const-string v2, "#ff0000"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1259
    iget-object v1, v12, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvRemainNumberAdBuzz:Landroid/widget/TextView;

    const-string v2, "#ff0000"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_2a5

    .line 1261
    :cond_4eb
    sget v1, Lic/buzzebeeslib/util/ThemesUtil;->gTheme:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_53f

    .line 1265
    iget-object v1, v7, Lic/buzzebeeslib/bean/Campaign;->AgencyID:Ljava/lang/String;

    if-eqz v1, :cond_524

    iget-object v1, v7, Lic/buzzebeeslib/bean/Campaign;->AgencyID:Ljava/lang/String;

    sget-object v2, Lic/buzzebeeslib/LibConst;->SPONSOR_ID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_524

    .line 1266
    iget-object v1, v12, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvRemainNumber:Landroid/widget/TextView;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1267
    iget-object v1, v12, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvRemainNumberAdBuzz:Landroid/widget/TextView;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1273
    :goto_50c
    iget-object v1, v12, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvRemainNumber:Landroid/widget/TextView;

    const-string v2, "#ffffff"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1274
    iget-object v1, v12, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvRemainNumberAdBuzz:Landroid/widget/TextView;

    const-string v2, "#ff764814"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_2a5

    .line 1269
    :cond_524
    iget-object v1, v12, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvRemainNumber:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter;->formatterHasDigi:Ljava/text/NumberFormat;

    invoke-virtual {v2, v8, v9}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1270
    iget-object v1, v12, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvRemainNumberAdBuzz:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter;->formatterHasDigi:Ljava/text/NumberFormat;

    invoke-virtual {v2, v8, v9}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_50c

    .line 1276
    :cond_53f
    const-wide/16 v1, 0x0

    cmpl-double v1, v8, v1

    if-lez v1, :cond_577

    .line 1277
    iget-object v1, v12, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvRemainNumber:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter;->formatterHasDigi:Ljava/text/NumberFormat;

    invoke-virtual {v2, v8, v9}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1278
    iget-object v1, v12, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvRemainNumber:Landroid/widget/TextView;

    const-string v2, "#ffffff"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1279
    iget-object v1, v12, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvRemainNumberAdBuzz:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter;->formatterHasDigi:Ljava/text/NumberFormat;

    invoke-virtual {v2, v8, v9}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1280
    iget-object v1, v12, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvRemainNumberAdBuzz:Landroid/widget/TextView;

    const-string v2, "#ffffff"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_2a5

    .line 1282
    :cond_577
    move-object/from16 v0, p0

    iget-object v1, v0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceListFragment;

    invoke-virtual {v1}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_5a7

    .line 1283
    iget-object v1, v12, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvRemainNumber:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceListFragment;

    invoke-virtual {v2}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    sget v3, Lic/buzzebeeslib/R$string;->market_soldout:I

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1284
    iget-object v1, v12, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvRemainNumberAdBuzz:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceListFragment;

    invoke-virtual {v2}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    sget v3, Lic/buzzebeeslib/R$string;->market_soldout:I

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1286
    :cond_5a7
    iget-object v1, v12, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvRemainNumber:Landroid/widget/TextView;

    const-string v2, "#ff0000"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1287
    iget-object v1, v12, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvRemainNumberAdBuzz:Landroid/widget/TextView;

    const-string v2, "#ff0000"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_2a5

    .line 1300
    :cond_5bf
    move-object/from16 v0, p0

    iget-object v1, v0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceListFragment;

    invoke-virtual {v1}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_5ef

    .line 1301
    iget-object v1, v12, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvTimeNumber:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceListFragment;

    invoke-virtual {v2}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    sget v3, Lic/buzzebeeslib/R$string;->market_time_over:I

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1302
    iget-object v1, v12, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvTimeNumberAdBuzz:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceListFragment;

    invoke-virtual {v2}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    sget v3, Lic/buzzebeeslib/R$string;->market_time_over:I

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1304
    :cond_5ef
    iget-object v1, v12, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvTimeNumber:Landroid/widget/TextView;

    const-string v2, "#ff0000"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1305
    iget-object v1, v12, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvTimeNumberAdBuzz:Landroid/widget/TextView;

    const-string v2, "#ff0000"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_338

    .line 1317
    .restart local v13    # "intRemain":D
    :cond_607
    const-wide/16 v1, 0x0

    cmpl-double v1, v13, v1

    if-lez v1, :cond_62e

    const-wide/high16 v1, 0x4024000000000000L

    cmpg-double v1, v13, v1

    if-gez v1, :cond_62e

    .line 1318
    iget-object v1, v12, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->imgRibbon:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1319
    iget-object v1, v12, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->imgRibbon:Landroid/widget/ImageView;

    sget v2, Lic/buzzebeeslib/R$drawable;->bz_ribbon_itemremain:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceListFragment;

    invoke-virtual {v3}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lic/buzzebeeslib/util/BBUtil;->setImageResource(Landroid/widget/ImageView;ILandroid/content/Context;)V

    goto/16 :goto_395

    .line 1320
    :cond_62e
    iget v1, v7, Lic/buzzebeeslib/bean/Campaign;->DayProceed:I

    const/4 v2, 0x3

    if-gt v1, v2, :cond_654

    const-wide/16 v1, 0x0

    cmpl-double v1, v13, v1

    if-lez v1, :cond_654

    .line 1321
    iget-object v1, v12, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->imgRibbon:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1322
    iget-object v1, v12, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->imgRibbon:Landroid/widget/ImageView;

    sget v2, Lic/buzzebeeslib/R$drawable;->bz_ribbon_new:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceListFragment;

    invoke-virtual {v3}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lic/buzzebeeslib/util/BBUtil;->setImageResource(Landroid/widget/ImageView;ILandroid/content/Context;)V

    goto/16 :goto_395

    .line 1324
    :cond_654
    iget-object v1, v12, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->imgRibbon:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_395

    .line 1332
    :cond_65d
    iget-object v1, v12, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvCaption:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1333
    iget-object v1, v12, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvCaption:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_3ad

    .line 1369
    :cond_66d
    iget-object v1, v12, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->layoutRight:Landroid/widget/RelativeLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1370
    iget-object v1, v12, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->layoutRightAdBuzz:Landroid/widget/RelativeLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_43d

    .line 1209
    .end local v8    # "dblRemaining":D
    .end local v13    # "intRemain":D
    :catch_67c
    move-exception v1

    goto/16 :goto_1af
.end method
