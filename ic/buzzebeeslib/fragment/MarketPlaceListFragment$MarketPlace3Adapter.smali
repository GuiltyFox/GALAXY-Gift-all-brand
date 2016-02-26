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
    .registers 21
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 1136
    const/4 v8, 0x0

    .line 1138
    .local v8, "campaign":Lic/buzzebeeslib/bean/Campaign;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceListFragment;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gCampaignViews:Ljava/util/ArrayList;
    invoke-static {v2}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->access$6(Lic/buzzebeeslib/fragment/MarketPlaceListFragment;)Ljava/util/ArrayList;

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
    :try_end_19
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_19} :catch_474

    .line 1143
    :goto_19
    const/4 v13, 0x0

    .line 1144
    .local v13, "holder":Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;
    move-object/from16 v16, p2

    .line 1146
    .local v16, "view":Landroid/view/View;
    if-eqz p2, :cond_24

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_47a

    .line 1148
    :cond_24
    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter;->gInflater:Landroid/view/LayoutInflater;

    sget v3, Lic/buzzebeeslib/R$layout;->bz_market_place_list_row:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v16

    .line 1149
    new-instance v13, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;

    .end local v13    # "holder":Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v2}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;-><init>(Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter;Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;)V

    .line 1150
    .restart local v13    # "holder":Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;
    sget v2, Lic/buzzebeeslib/R$id;->imgCampaignThumb:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v13, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->imgCampaignThumb:Landroid/widget/ImageView;

    .line 1151
    sget v2, Lic/buzzebeeslib/R$id;->imgCampaign:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v13, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->imgCampaign:Landroid/widget/ImageView;

    .line 1152
    sget v2, Lic/buzzebeeslib/R$id;->imgRibbon:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v13, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->imgRibbon:Landroid/widget/ImageView;

    .line 1153
    sget v2, Lic/buzzebeeslib/R$id;->tvCaption:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v13, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvCaption:Landroid/widget/TextView;

    .line 1154
    sget v2, Lic/buzzebeeslib/R$id;->tvHeader:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v13, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvHeader:Landroid/widget/TextView;

    .line 1155
    sget v2, Lic/buzzebeeslib/R$id;->tvDescription:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v13, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvDescription:Landroid/widget/TextView;

    .line 1156
    sget v2, Lic/buzzebeeslib/R$id;->tvDiscountNumber:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v13, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvDiscountNumber:Landroid/widget/TextView;

    .line 1157
    sget v2, Lic/buzzebeeslib/R$id;->imgPoint:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v13, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->imgPoint:Landroid/widget/ImageView;

    .line 1158
    sget v2, Lic/buzzebeeslib/R$id;->tvPointNumber:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v13, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvPointNumber:Landroid/widget/TextView;

    .line 1159
    sget v2, Lic/buzzebeeslib/R$id;->tvPriceNumber:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v13, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvPriceNumber:Landroid/widget/TextView;

    .line 1160
    sget v2, Lic/buzzebeeslib/R$id;->tvRemainNumber:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v13, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvRemainNumber:Landroid/widget/TextView;

    .line 1161
    sget v2, Lic/buzzebeeslib/R$id;->tvTimeNumber:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v13, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvTimeNumber:Landroid/widget/TextView;

    .line 1162
    sget v2, Lic/buzzebeeslib/R$id;->layoutRight:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, v13, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->layoutRight:Landroid/widget/RelativeLayout;

    .line 1164
    sget v2, Lic/buzzebeeslib/R$id;->tvDiscountCaption:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v13, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvDiscountCaption:Landroid/widget/TextView;

    .line 1165
    sget v2, Lic/buzzebeeslib/R$id;->tvPointCaption:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v13, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvPointCaption:Landroid/widget/TextView;

    .line 1166
    sget v2, Lic/buzzebeeslib/R$id;->tvPriceCaption:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v13, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvPriceCaption:Landroid/widget/TextView;

    .line 1167
    sget v2, Lic/buzzebeeslib/R$id;->tvRemainCaption:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v13, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvRemainCaption:Landroid/widget/TextView;

    .line 1168
    sget v2, Lic/buzzebeeslib/R$id;->tvTimeCaption:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v13, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvTimeCaption:Landroid/widget/TextView;

    .line 1170
    sget v2, Lic/buzzebeeslib/R$id;->layoutRightAdBuzz:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, v13, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->layoutRightAdBuzz:Landroid/widget/RelativeLayout;

    .line 1171
    sget v2, Lic/buzzebeeslib/R$id;->tvAddPointsAdBuzz:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v13, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvAddPointsAdBuzz:Landroid/widget/TextView;

    .line 1172
    sget v2, Lic/buzzebeeslib/R$id;->tvPointNumberAdBuzz:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v13, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvPointNumberAdBuzz:Landroid/widget/TextView;

    .line 1173
    sget v2, Lic/buzzebeeslib/R$id;->imgRemainAdBuzz:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v13, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->imgRemainAdBuzz:Landroid/widget/ImageView;

    .line 1174
    sget v2, Lic/buzzebeeslib/R$id;->tvRemainCaptionAdBuzz:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v13, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvRemainCaptionAdBuzz:Landroid/widget/TextView;

    .line 1175
    sget v2, Lic/buzzebeeslib/R$id;->tvRemainNumberAdBuzz:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v13, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvRemainNumberAdBuzz:Landroid/widget/TextView;

    .line 1176
    sget v2, Lic/buzzebeeslib/R$id;->tvTimeCaptionAdBuzz:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v13, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvTimeCaptionAdBuzz:Landroid/widget/TextView;

    .line 1177
    sget v2, Lic/buzzebeeslib/R$id;->tvTimeNumberAdBuzz:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v13, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvTimeNumberAdBuzz:Landroid/widget/TextView;

    .line 1179
    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1186
    :goto_174
    :try_start_174
    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceListFragment;

    invoke-virtual {v2}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const-string v3, "fonts/kit55p.ttf"

    invoke-static {v2, v3}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v12

    .line 1188
    .local v12, "font":Landroid/graphics/Typeface;
    iget-object v2, v13, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvCaption:Landroid/widget/TextView;

    invoke-virtual {v2, v12}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1189
    iget-object v2, v13, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvHeader:Landroid/widget/TextView;

    invoke-virtual {v2, v12}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1190
    iget-object v2, v13, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvDescription:Landroid/widget/TextView;

    invoke-virtual {v2, v12}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1191
    iget-object v2, v13, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvDiscountNumber:Landroid/widget/TextView;

    invoke-virtual {v2, v12}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1192
    iget-object v2, v13, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvPointNumber:Landroid/widget/TextView;

    invoke-virtual {v2, v12}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1193
    iget-object v2, v13, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvPriceNumber:Landroid/widget/TextView;

    invoke-virtual {v2, v12}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1194
    iget-object v2, v13, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvRemainNumber:Landroid/widget/TextView;

    invoke-virtual {v2, v12}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1195
    iget-object v2, v13, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvTimeNumber:Landroid/widget/TextView;

    invoke-virtual {v2, v12}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1197
    iget-object v2, v13, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvDiscountCaption:Landroid/widget/TextView;

    invoke-virtual {v2, v12}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1198
    iget-object v2, v13, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvPointCaption:Landroid/widget/TextView;

    invoke-virtual {v2, v12}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1199
    iget-object v2, v13, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvPriceCaption:Landroid/widget/TextView;

    invoke-virtual {v2, v12}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1200
    iget-object v2, v13, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvRemainCaption:Landroid/widget/TextView;

    invoke-virtual {v2, v12}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1201
    iget-object v2, v13, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvTimeCaption:Landroid/widget/TextView;

    invoke-virtual {v2, v12}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1203
    iget-object v2, v13, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvAddPointsAdBuzz:Landroid/widget/TextView;

    invoke-virtual {v2, v12}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1204
    iget-object v2, v13, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvPointNumberAdBuzz:Landroid/widget/TextView;

    invoke-virtual {v2, v12}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1205
    iget-object v2, v13, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvRemainCaptionAdBuzz:Landroid/widget/TextView;

    invoke-virtual {v2, v12}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1206
    iget-object v2, v13, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvRemainNumberAdBuzz:Landroid/widget/TextView;

    invoke-virtual {v2, v12}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1207
    iget-object v2, v13, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvTimeCaptionAdBuzz:Landroid/widget/TextView;

    invoke-virtual {v2, v12}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1208
    iget-object v2, v13, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvTimeNumberAdBuzz:Landroid/widget/TextView;

    invoke-virtual {v2, v12}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V
    :try_end_1e5
    .catch Ljava/lang/Exception; {:try_start_174 .. :try_end_1e5} :catch_6b2

    .line 1213
    .end local v12    # "font":Landroid/graphics/Typeface;
    :goto_1e5
    iget-object v2, v13, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvHeader:Landroid/widget/TextView;

    iget-object v3, v8, Lic/buzzebeeslib/bean/Campaign;->AgencyName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1214
    iget-object v2, v13, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvDescription:Landroid/widget/TextView;

    iget-object v3, v8, Lic/buzzebeeslib/bean/Campaign;->Name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1215
    iget-object v2, v13, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvDiscountNumber:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v4, v0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter;->formatter:Ljava/text/NumberFormat;

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

    const-string v4, " %"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1216
    iget-object v2, v13, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvPointNumber:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter;->formatterHasDigi:Ljava/text/NumberFormat;

    iget-object v4, v8, Lic/buzzebeeslib/bean/Campaign;->PointPerUnit:Ljava/lang/String;

    invoke-static {v4}, Lic/buzzebeeslib/util/BBUtil;->CTypeDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/NumberFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1217
    iget-object v2, v13, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvPointNumberAdBuzz:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter;->formatterHasDigi:Ljava/text/NumberFormat;

    iget-object v4, v8, Lic/buzzebeeslib/bean/Campaign;->PointPerUnit:Ljava/lang/String;

    invoke-static {v4}, Lic/buzzebeeslib/util/BBUtil;->CTypeDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/NumberFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1218
    iget-object v2, v13, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvPriceNumber:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter;->formatterHasDigi:Ljava/text/NumberFormat;

    iget-object v4, v8, Lic/buzzebeeslib/bean/Campaign;->PricePerUnit:Ljava/lang/String;

    invoke-static {v4}, Lic/buzzebeeslib/util/BBUtil;->CTypeDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/NumberFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1220
    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceListFragment;

    invoke-virtual {v2}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    if-eqz v2, :cond_296

    .line 1221
    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceListFragment;

    invoke-virtual {v2}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v2, v2, 0xf

    const/4 v3, 0x1

    if-ne v2, v3, :cond_48a

    .line 1222
    iget-object v2, v8, Lic/buzzebeeslib/bean/Campaign;->PointPerUnit:Ljava/lang/String;

    invoke-static {v2}, Lic/buzzebeeslib/util/BBUtil;->CTypeDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    const-wide v4, 0x40f86a0000000000L

    cmpl-double v2, v2, v4

    if-ltz v2, :cond_482

    .line 1223
    iget-object v2, v13, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->imgPoint:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1242
    :cond_296
    :goto_296
    iget-wide v2, v8, Lic/buzzebeeslib/bean/Campaign;->Qty:J

    long-to-double v10, v2

    .line 1243
    .local v10, "dblRemaining":D
    iget-boolean v2, v8, Lic/buzzebeeslib/bean/Campaign;->isFromNoti:Z

    if-eqz v2, :cond_2a0

    .line 1244
    iget v2, v8, Lic/buzzebeeslib/bean/Campaign;->ItemRemain:I

    int-to-double v10, v2

    .line 1247
    :cond_2a0
    sget v2, Lic/buzzebeeslib/util/ThemesUtil;->gTheme:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_521

    .line 1248
    const-wide/16 v2, 0x0

    cmpl-double v2, v10, v2

    if-lez v2, :cond_4d9

    .line 1249
    iget-object v2, v13, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvRemainNumber:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter;->formatterHasDigi:Ljava/text/NumberFormat;

    invoke-virtual {v3, v10, v11}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1250
    iget-object v2, v13, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvRemainNumber:Landroid/widget/TextView;

    const-string v3, "#ffffff"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1251
    iget-object v2, v13, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvRemainNumberAdBuzz:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter;->formatterHasDigi:Ljava/text/NumberFormat;

    invoke-virtual {v3, v10, v11}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1252
    iget-object v2, v13, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvRemainNumberAdBuzz:Landroid/widget/TextView;

    const-string v3, "#ff764814"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1291
    :goto_2db
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

    if-lez v2, :cond_5f5

    .line 1292
    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceListFragment;

    invoke-virtual {v2}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    if-eqz v2, :cond_358

    .line 1293
    iget-object v2, v13, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvTimeNumber:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, v8, Lic/buzzebeeslib/bean/Campaign;->DayRemain:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceListFragment;

    invoke-virtual {v4}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    sget v5, Lic/buzzebeeslib/R$string;->market_days:I

    invoke-virtual {v4, v5}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1294
    iget-object v2, v13, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvTimeNumberAdBuzz:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, v8, Lic/buzzebeeslib/bean/Campaign;->DayRemain:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceListFragment;

    invoke-virtual {v4}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    sget v5, Lic/buzzebeeslib/R$string;->market_days:I

    invoke-virtual {v4, v5}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1297
    :cond_358
    iget-object v2, v13, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvTimeNumber:Landroid/widget/TextView;

    const-string v3, "#ffffff"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1298
    iget-object v2, v13, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvTimeNumberAdBuzz:Landroid/widget/TextView;

    const-string v3, "#ff764814"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1311
    :goto_36e
    iget-wide v2, v8, Lic/buzzebeeslib/bean/Campaign;->Qty:J

    long-to-double v14, v2

    .line 1313
    .local v14, "intRemain":D
    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceListFragment;

    invoke-virtual {v2}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    if-eqz v2, :cond_3cb

    .line 1314
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

    if-lez v2, :cond_63d

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

    if-ge v2, v3, :cond_63d

    .line 1315
    iget-object v2, v13, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->imgRibbon:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1316
    iget-object v2, v13, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->imgRibbon:Landroid/widget/ImageView;

    sget v3, Lic/buzzebeeslib/R$drawable;->bz_ribbon_dayremain:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceListFragment;

    invoke-virtual {v4}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lic/buzzebeeslib/util/BBUtil;->setImageResource(Landroid/widget/ImageView;ILandroid/content/Context;)V

    .line 1328
    :cond_3cb
    :goto_3cb
    iget-object v2, v8, Lic/buzzebeeslib/bean/Campaign;->Caption:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_693

    .line 1329
    iget-object v2, v13, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvCaption:Landroid/widget/TextView;

    iget-object v3, v8, Lic/buzzebeeslib/bean/Campaign;->Caption:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1330
    iget-object v2, v13, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvCaption:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1351
    :goto_3e3
    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceListFragment;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;
    invoke-static {v2}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->access$8(Lic/buzzebeeslib/fragment/MarketPlaceListFragment;)Lcom/bitmapfun/util/ImageFetcher;

    move-result-object v2

    invoke-virtual {v8}, Lic/buzzebeeslib/bean/Campaign;->FullImageUrlThumb()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v13, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->imgCampaignThumb:Landroid/widget/ImageView;

    const/4 v5, 0x0

    sget v6, Lic/buzzebeeslib/R$drawable;->t1_1:I

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/bitmapfun/util/ImageFetcher;->loadImage(Ljava/lang/Object;Landroid/widget/ImageView;Landroid/widget/ProgressBar;IZ)V

    .line 1352
    iget-object v2, v13, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->imgCampaign:Landroid/widget/ImageView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1353
    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceListFragment;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;
    invoke-static {v2}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->access$8(Lic/buzzebeeslib/fragment/MarketPlaceListFragment;)Lcom/bitmapfun/util/ImageFetcher;

    move-result-object v2

    invoke-virtual {v8}, Lic/buzzebeeslib/bean/Campaign;->FullImageUrlLarge()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v13, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->imgCampaign:Landroid/widget/ImageView;

    const/4 v5, 0x0

    sget v6, Lic/buzzebeeslib/R$drawable;->t1_1:I

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/bitmapfun/util/ImageFetcher;->loadImage(Ljava/lang/Object;Landroid/widget/ImageView;Landroid/widget/ProgressBar;IZ)V

    .line 1355
    iget-object v2, v8, Lic/buzzebeeslib/bean/Campaign;->Type:Ljava/lang/String;

    const-string v3, "5"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_427

    iget-object v2, v8, Lic/buzzebeeslib/bean/Campaign;->Type:Ljava/lang/String;

    const-string v3, "6"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6a3

    .line 1356
    :cond_427
    iget-object v2, v13, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->layoutRight:Landroid/widget/RelativeLayout;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1357
    iget-object v2, v13, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->layoutRightAdBuzz:Landroid/widget/RelativeLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1358
    iget-object v2, v13, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->imgRemainAdBuzz:Landroid/widget/ImageView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1359
    iget-object v2, v13, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvRemainCaptionAdBuzz:Landroid/widget/TextView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1360
    iget-object v2, v13, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvRemainNumberAdBuzz:Landroid/widget/TextView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1361
    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceListFragment;

    invoke-virtual {v2}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    if-eqz v2, :cond_473

    .line 1362
    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceListFragment;

    invoke-virtual {v2}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lic/buzzebeeslib/LibUserLogin;->IS_ADMIN(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_473

    .line 1363
    iget-object v2, v13, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->imgRemainAdBuzz:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1364
    iget-object v2, v13, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvRemainCaptionAdBuzz:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1365
    iget-object v2, v13, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvRemainNumberAdBuzz:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1373
    :cond_473
    :goto_473
    return-object v16

    .line 1139
    .end local v10    # "dblRemaining":D
    .end local v13    # "holder":Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;
    .end local v14    # "intRemain":D
    .end local v16    # "view":Landroid/view/View;
    :catch_474
    move-exception v9

    .line 1140
    .local v9, "e1":Ljava/lang/CloneNotSupportedException;
    invoke-virtual {v9}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V

    goto/16 :goto_19

    .line 1181
    .end local v9    # "e1":Ljava/lang/CloneNotSupportedException;
    .restart local v13    # "holder":Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;
    .restart local v16    # "view":Landroid/view/View;
    :cond_47a
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v13

    .end local v13    # "holder":Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;
    check-cast v13, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;

    .restart local v13    # "holder":Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;
    goto/16 :goto_174

    .line 1225
    :cond_482
    iget-object v2, v13, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->imgPoint:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_296

    .line 1227
    :cond_48a
    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceListFragment;

    invoke-virtual {v2}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v2, v2, 0xf

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4d1

    .line 1228
    iget-object v2, v8, Lic/buzzebeeslib/bean/Campaign;->PointPerUnit:Ljava/lang/String;

    invoke-static {v2}, Lic/buzzebeeslib/util/BBUtil;->CTypeDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    const-wide v4, 0x40f86a0000000000L

    cmpl-double v2, v2, v4

    if-ltz v2, :cond_4c9

    .line 1229
    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceListFragment;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gDpi:I
    invoke-static {v2}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->access$7(Lic/buzzebeeslib/fragment/MarketPlaceListFragment;)I

    move-result v2

    const/16 v3, 0xf0

    if-gt v2, v3, :cond_296

    .line 1230
    iget-object v2, v13, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->imgPoint:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_296

    .line 1233
    :cond_4c9
    iget-object v2, v13, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->imgPoint:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_296

    .line 1236
    :cond_4d1
    iget-object v2, v13, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->imgPoint:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_296

    .line 1254
    .restart local v10    # "dblRemaining":D
    :cond_4d9
    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceListFragment;

    invoke-virtual {v2}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    if-eqz v2, :cond_509

    .line 1255
    iget-object v2, v13, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvRemainNumber:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceListFragment;

    invoke-virtual {v3}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    sget v4, Lic/buzzebeeslib/R$string;->market_soldout:I

    invoke-virtual {v3, v4}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1256
    iget-object v2, v13, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvRemainNumberAdBuzz:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceListFragment;

    invoke-virtual {v3}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    sget v4, Lic/buzzebeeslib/R$string;->market_soldout:I

    invoke-virtual {v3, v4}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1258
    :cond_509
    iget-object v2, v13, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvRemainNumber:Landroid/widget/TextView;

    const-string v3, "#ff0000"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1259
    iget-object v2, v13, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvRemainNumberAdBuzz:Landroid/widget/TextView;

    const-string v3, "#ff0000"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_2db

    .line 1261
    :cond_521
    sget v2, Lic/buzzebeeslib/util/ThemesUtil;->gTheme:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_575

    .line 1265
    iget-object v2, v8, Lic/buzzebeeslib/bean/Campaign;->AgencyID:Ljava/lang/String;

    if-eqz v2, :cond_55a

    iget-object v2, v8, Lic/buzzebeeslib/bean/Campaign;->AgencyID:Ljava/lang/String;

    sget-object v3, Lic/buzzebeeslib/LibConst;->SPONSOR_ID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_55a

    .line 1266
    iget-object v2, v13, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvRemainNumber:Landroid/widget/TextView;

    const-string v3, "-"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1267
    iget-object v2, v13, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvRemainNumberAdBuzz:Landroid/widget/TextView;

    const-string v3, "-"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1273
    :goto_542
    iget-object v2, v13, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvRemainNumber:Landroid/widget/TextView;

    const-string v3, "#ffffff"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1274
    iget-object v2, v13, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvRemainNumberAdBuzz:Landroid/widget/TextView;

    const-string v3, "#ff764814"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_2db

    .line 1269
    :cond_55a
    iget-object v2, v13, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvRemainNumber:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter;->formatterHasDigi:Ljava/text/NumberFormat;

    invoke-virtual {v3, v10, v11}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1270
    iget-object v2, v13, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvRemainNumberAdBuzz:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter;->formatterHasDigi:Ljava/text/NumberFormat;

    invoke-virtual {v3, v10, v11}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_542

    .line 1276
    :cond_575
    const-wide/16 v2, 0x0

    cmpl-double v2, v10, v2

    if-lez v2, :cond_5ad

    .line 1277
    iget-object v2, v13, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvRemainNumber:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter;->formatterHasDigi:Ljava/text/NumberFormat;

    invoke-virtual {v3, v10, v11}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1278
    iget-object v2, v13, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvRemainNumber:Landroid/widget/TextView;

    const-string v3, "#ffffff"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1279
    iget-object v2, v13, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvRemainNumberAdBuzz:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter;->formatterHasDigi:Ljava/text/NumberFormat;

    invoke-virtual {v3, v10, v11}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1280
    iget-object v2, v13, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvRemainNumberAdBuzz:Landroid/widget/TextView;

    const-string v3, "#ffffff"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_2db

    .line 1282
    :cond_5ad
    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceListFragment;

    invoke-virtual {v2}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    if-eqz v2, :cond_5dd

    .line 1283
    iget-object v2, v13, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvRemainNumber:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceListFragment;

    invoke-virtual {v3}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    sget v4, Lic/buzzebeeslib/R$string;->market_soldout:I

    invoke-virtual {v3, v4}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1284
    iget-object v2, v13, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvRemainNumberAdBuzz:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceListFragment;

    invoke-virtual {v3}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    sget v4, Lic/buzzebeeslib/R$string;->market_soldout:I

    invoke-virtual {v3, v4}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1286
    :cond_5dd
    iget-object v2, v13, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvRemainNumber:Landroid/widget/TextView;

    const-string v3, "#ff0000"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1287
    iget-object v2, v13, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvRemainNumberAdBuzz:Landroid/widget/TextView;

    const-string v3, "#ff0000"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_2db

    .line 1300
    :cond_5f5
    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceListFragment;

    invoke-virtual {v2}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    if-eqz v2, :cond_625

    .line 1301
    iget-object v2, v13, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvTimeNumber:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceListFragment;

    invoke-virtual {v3}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    sget v4, Lic/buzzebeeslib/R$string;->market_time_over:I

    invoke-virtual {v3, v4}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1302
    iget-object v2, v13, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvTimeNumberAdBuzz:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceListFragment;

    invoke-virtual {v3}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    sget v4, Lic/buzzebeeslib/R$string;->market_time_over:I

    invoke-virtual {v3, v4}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1304
    :cond_625
    iget-object v2, v13, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvTimeNumber:Landroid/widget/TextView;

    const-string v3, "#ff0000"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1305
    iget-object v2, v13, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvTimeNumberAdBuzz:Landroid/widget/TextView;

    const-string v3, "#ff0000"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_36e

    .line 1317
    .restart local v14    # "intRemain":D
    :cond_63d
    const-wide/16 v2, 0x0

    cmpl-double v2, v14, v2

    if-lez v2, :cond_664

    const-wide/high16 v2, 0x4024000000000000L

    cmpg-double v2, v14, v2

    if-gez v2, :cond_664

    .line 1318
    iget-object v2, v13, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->imgRibbon:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1319
    iget-object v2, v13, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->imgRibbon:Landroid/widget/ImageView;

    sget v3, Lic/buzzebeeslib/R$drawable;->bz_ribbon_itemremain:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceListFragment;

    invoke-virtual {v4}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lic/buzzebeeslib/util/BBUtil;->setImageResource(Landroid/widget/ImageView;ILandroid/content/Context;)V

    goto/16 :goto_3cb

    .line 1320
    :cond_664
    iget v2, v8, Lic/buzzebeeslib/bean/Campaign;->DayProceed:I

    const/4 v3, 0x3

    if-gt v2, v3, :cond_68a

    const-wide/16 v2, 0x0

    cmpl-double v2, v14, v2

    if-lez v2, :cond_68a

    .line 1321
    iget-object v2, v13, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->imgRibbon:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1322
    iget-object v2, v13, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->imgRibbon:Landroid/widget/ImageView;

    sget v3, Lic/buzzebeeslib/R$drawable;->bz_ribbon_new:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceListFragment;

    invoke-virtual {v4}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lic/buzzebeeslib/util/BBUtil;->setImageResource(Landroid/widget/ImageView;ILandroid/content/Context;)V

    goto/16 :goto_3cb

    .line 1324
    :cond_68a
    iget-object v2, v13, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->imgRibbon:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_3cb

    .line 1332
    :cond_693
    iget-object v2, v13, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvCaption:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1333
    iget-object v2, v13, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvCaption:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_3e3

    .line 1369
    :cond_6a3
    iget-object v2, v13, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->layoutRight:Landroid/widget/RelativeLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1370
    iget-object v2, v13, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->layoutRightAdBuzz:Landroid/widget/RelativeLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_473

    .line 1209
    .end local v10    # "dblRemaining":D
    .end local v14    # "intRemain":D
    :catch_6b2
    move-exception v2

    goto/16 :goto_1e5
.end method
