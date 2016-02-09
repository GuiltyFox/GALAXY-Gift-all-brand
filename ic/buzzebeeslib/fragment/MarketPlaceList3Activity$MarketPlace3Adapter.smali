.class Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter;
.super Landroid/widget/BaseAdapter;
.source "MarketPlaceList3Activity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MarketPlace3Adapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter$ViewHolderMarketPlaceRow;
    }
.end annotation


# instance fields
.field private formatter:Ljava/text/NumberFormat;

.field private formatterHasDigi:Ljava/text/NumberFormat;

.field private gInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;


# direct methods
.method public constructor <init>(Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;Landroid/content/Context;)V
    .registers 5
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 1214
    iput-object p1, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 1211
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "###,###,###"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter;->formatter:Ljava/text/NumberFormat;

    .line 1212
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "###,###,###.##"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter;->formatterHasDigi:Ljava/text/NumberFormat;

    .line 1215
    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter;->gInflater:Landroid/view/LayoutInflater;

    .line 1217
    return-void
.end method

.method static synthetic access$1(Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter;)Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;
    .registers 2

    .prologue
    .line 1208
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 1220
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gCampaignViews:Ljava/util/ArrayList;
    invoke-static {v0}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->access$6(Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lic/buzzebeeslib/bean/Campaign;
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 1224
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gCampaignViews:Ljava/util/ArrayList;
    invoke-static {v0}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->access$6(Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;)Ljava/util/ArrayList;

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
    invoke-virtual {p0, p1}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter;->getItem(I)Lic/buzzebeeslib/bean/Campaign;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .param p1, "position"    # I

    .prologue
    .line 1228
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 21
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 1247
    const/4 v7, 0x0

    .line 1249
    .local v7, "campaign":Lic/buzzebeeslib/bean/Campaign;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gCampaignViews:Ljava/util/ArrayList;
    invoke-static {v1}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->access$6(Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;)Ljava/util/ArrayList;

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
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_19} :catch_c3

    .line 1254
    :goto_19
    const/4 v11, 0x0

    .line 1255
    .local v11, "holder":Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter$ViewHolderMarketPlaceRow;
    move-object/from16 v16, p2

    .line 1257
    .local v16, "view":Landroid/view/View;
    if-eqz p2, :cond_24

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_c9

    .line 1258
    :cond_24
    move-object/from16 v0, p0

    iget-object v1, v0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter;->gInflater:Landroid/view/LayoutInflater;

    sget v2, Lic/buzzebeeslib/R$layout;->bz_market_place_list3_row:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v16

    .line 1259
    new-instance v11, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter$ViewHolderMarketPlaceRow;

    .end local v11    # "holder":Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter$ViewHolderMarketPlaceRow;
    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-direct {v11, v0, v1}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter$ViewHolderMarketPlaceRow;-><init>(Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter;Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter$ViewHolderMarketPlaceRow;)V

    .line 1260
    .restart local v11    # "holder":Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter$ViewHolderMarketPlaceRow;
    sget v1, Lic/buzzebeeslib/R$id;->imgCampaign:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v11, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->imgCampaign:Landroid/widget/ImageView;

    .line 1261
    sget v1, Lic/buzzebeeslib/R$id;->tvCaption:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v11, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvCaption:Landroid/widget/TextView;

    .line 1262
    sget v1, Lic/buzzebeeslib/R$id;->tvType:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v11, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvType:Landroid/widget/TextView;

    .line 1263
    sget v1, Lic/buzzebeeslib/R$id;->tvPrice:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v11, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvPrice:Landroid/widget/TextView;

    .line 1264
    sget v1, Lic/buzzebeeslib/R$id;->tvPoint:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v11, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvPoint:Landroid/widget/TextView;

    .line 1265
    sget v1, Lic/buzzebeeslib/R$id;->tvPriceFull:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v11, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvPriceFull:Landroid/widget/TextView;

    .line 1266
    sget v1, Lic/buzzebeeslib/R$id;->imgRibbon:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v11, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->imgRibbon:Landroid/widget/ImageView;

    .line 1268
    sget v1, Lic/buzzebeeslib/R$id;->layoutAction:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, v11, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->layoutAction:Landroid/widget/RelativeLayout;

    .line 1269
    sget v1, Lic/buzzebeeslib/R$id;->tvAction:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v11, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvAction:Landroid/widget/TextView;

    .line 1270
    sget v1, Lic/buzzebeeslib/R$id;->tvStatus:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v11, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvStatus:Landroid/widget/TextView;

    .line 1271
    sget v1, Lic/buzzebeeslib/R$id;->imgCardPtt:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v11, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->imgCardPtt:Landroid/widget/ImageView;

    .line 1272
    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1277
    :goto_c0
    if-nez v7, :cond_d0

    .line 1471
    :goto_c2
    return-object v16

    .line 1250
    .end local v11    # "holder":Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter$ViewHolderMarketPlaceRow;
    .end local v16    # "view":Landroid/view/View;
    :catch_c3
    move-exception v10

    .line 1251
    .local v10, "e1":Ljava/lang/Exception;
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_19

    .line 1274
    .end local v10    # "e1":Ljava/lang/Exception;
    .restart local v11    # "holder":Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter$ViewHolderMarketPlaceRow;
    .restart local v16    # "view":Landroid/view/View;
    :cond_c9
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v11

    .end local v11    # "holder":Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter$ViewHolderMarketPlaceRow;
    check-cast v11, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter$ViewHolderMarketPlaceRow;

    .restart local v11    # "holder":Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter$ViewHolderMarketPlaceRow;
    goto :goto_c0

    .line 1281
    :cond_d0
    iget-object v1, v11, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvCaption:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    invoke-virtual {v2}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lic/buzzebeeslib/util/FontUtil;->SetFontDefault(Landroid/widget/TextView;Landroid/content/Context;)V

    .line 1282
    iget-object v1, v11, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvType:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    invoke-virtual {v2}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v4}, Lic/buzzebeeslib/util/FontUtil;->SetFontDefault(Landroid/widget/TextView;Landroid/content/Context;II)V

    .line 1283
    iget-object v1, v11, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvPrice:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    invoke-virtual {v2}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v4}, Lic/buzzebeeslib/util/FontUtil;->SetFontDefault(Landroid/widget/TextView;Landroid/content/Context;II)V

    .line 1284
    iget-object v1, v11, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvPoint:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    invoke-virtual {v2}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, -0x2

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Lic/buzzebeeslib/util/FontUtil;->SetFontDefault(Landroid/widget/TextView;Landroid/content/Context;II)V

    .line 1285
    iget-object v1, v11, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvPriceFull:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    invoke-virtual {v2}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, -0x2

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Lic/buzzebeeslib/util/FontUtil;->SetFontDefault(Landroid/widget/TextView;Landroid/content/Context;II)V

    .line 1286
    iget-object v1, v11, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvAction:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    invoke-virtual {v2}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, -0x3

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Lic/buzzebeeslib/util/FontUtil;->SetFontDefault(Landroid/widget/TextView;Landroid/content/Context;II)V

    .line 1287
    iget-object v1, v11, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvStatus:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    invoke-virtual {v2}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, -0x2

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Lic/buzzebeeslib/util/FontUtil;->SetFontDefault(Landroid/widget/TextView;Landroid/content/Context;II)V

    .line 1289
    sget-object v1, Lic/buzzebeeslib/LibConst;->PACKAGE_PARENT:Ljava/lang/String;

    const-string v2, "com.ptt.BlueCard"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_331

    .line 1290
    iget-object v1, v11, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->imgCardPtt:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1302
    :goto_147
    iget-object v1, v7, Lic/buzzebeeslib/bean/Campaign;->Type:Ljava/lang/String;

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_33a

    .line 1303
    iget-object v1, v11, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvType:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    sget v3, Lic/buzzebeeslib/R$string;->campaign_list_type_draw:I

    invoke-virtual {v2, v3}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1304
    iget-object v1, v11, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvType:Landroid/widget/TextView;

    const/16 v2, 0xdd

    const/16 v3, 0x59

    const/16 v4, 0x2b

    invoke-static {v2, v3, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1332
    :goto_16f
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "0"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v7, Lic/buzzebeeslib/bean/Campaign;->PointPerUnit:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lic/buzzebeeslib/util/BBUtil;->CTypeDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v14

    .line 1333
    .local v14, "point_per_unit":D
    iget-object v1, v7, Lic/buzzebeeslib/bean/Campaign;->Type:Ljava/lang/String;

    const-string v2, "5"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19c

    iget-object v1, v7, Lic/buzzebeeslib/bean/Campaign;->Type:Ljava/lang/String;

    const-string v2, "6"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4c6

    .line 1334
    :cond_19c
    const-wide/high16 v1, 0x3ff0000000000000L

    cmpg-double v1, v14, v1

    if-gtz v1, :cond_496

    .line 1335
    iget-object v1, v11, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvPoint:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter;->formatterHasDigi:Ljava/text/NumberFormat;

    invoke-virtual {v3, v14, v15}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    sget v4, Lic/buzzebeeslib/R$string;->market_point:I

    invoke-virtual {v3, v4}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1339
    :goto_1d0
    iget-object v1, v11, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->layoutAction:Landroid/widget/RelativeLayout;

    const/16 v2, 0xff

    const/16 v3, 0xae

    const/16 v4, 0xe

    invoke-static {v2, v3, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 1373
    :goto_1df
    iget-object v1, v11, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvPrice:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter;->formatterHasDigi:Ljava/text/NumberFormat;

    iget-object v4, v7, Lic/buzzebeeslib/bean/Campaign;->PricePerUnit:Ljava/lang/String;

    invoke-static {v4}, Lic/buzzebeeslib/util/BBUtil;->CTypeDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/NumberFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    sget v4, Lic/buzzebeeslib/R$string;->mk_detail_thb:I

    invoke-virtual {v3, v4}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1374
    iget-object v1, v11, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvPriceFull:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter;->formatterHasDigi:Ljava/text/NumberFormat;

    iget-object v4, v7, Lic/buzzebeeslib/bean/Campaign;->OriginalPrice:Ljava/lang/String;

    invoke-static {v4}, Lic/buzzebeeslib/util/BBUtil;->CTypeDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/NumberFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    sget v4, Lic/buzzebeeslib/R$string;->mk_detail_thb:I

    invoke-virtual {v3, v4}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1375
    iget-object v1, v11, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvPriceFull:Landroid/widget/TextView;

    iget-object v2, v11, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvPriceFull:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaintFlags()I

    move-result v2

    or-int/lit8 v2, v2, 0x10

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setPaintFlags(I)V

    .line 1377
    iget-object v1, v7, Lic/buzzebeeslib/bean/Campaign;->Type:Ljava/lang/String;

    const-string v2, "2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_268

    iget-object v1, v7, Lic/buzzebeeslib/bean/Campaign;->Type:Ljava/lang/String;

    const-string v2, "3"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6ba

    .line 1378
    :cond_268
    iget-object v1, v11, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvPrice:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1379
    iget-object v1, v11, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvPriceFull:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1385
    :goto_274
    iget-object v1, v7, Lic/buzzebeeslib/bean/Campaign;->Type:Ljava/lang/String;

    const-string v2, "3"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6ca

    .line 1386
    iget-object v1, v11, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvAction:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    sget v3, Lic/buzzebeeslib/R$string;->campaign_list_button_add_to_cart:I

    invoke-virtual {v2, v3}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1391
    :goto_28d
    iget-object v8, v7, Lic/buzzebeeslib/bean/Campaign;->Type:Ljava/lang/String;

    .line 1392
    .local v8, "campaign_type_final":Ljava/lang/String;
    iget-object v9, v7, Lic/buzzebeeslib/bean/Campaign;->Website:Ljava/lang/String;

    .line 1393
    .local v9, "campaign_website_final":Ljava/lang/String;
    iget-object v1, v11, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvAction:Landroid/widget/TextView;

    new-instance v2, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter$1;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v8, v9}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter$1;-><init>(Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1429
    iget-object v1, v11, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->imgRibbon:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1430
    iget-wide v1, v7, Lic/buzzebeeslib/bean/Campaign;->Qty:J

    long-to-double v12, v1

    .line 1431
    .local v12, "intRemain":D
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

    if-lez v1, :cond_6db

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

    if-ge v1, v2, :cond_6db

    .line 1435
    iget-object v1, v11, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvStatus:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    sget v3, Lic/buzzebeeslib/R$string;->campaign_list_status_day_remain:I

    invoke-virtual {v2, v3}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1459
    :goto_2ed
    iget-object v1, v11, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvCaption:Landroid/widget/TextView;

    iget-object v2, v7, Lic/buzzebeeslib/bean/Campaign;->Name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1460
    iget-object v1, v11, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvCaption:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1462
    iget-object v1, v11, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->imgCampaign:Landroid/widget/ImageView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1463
    move-object/from16 v0, p0

    iget-object v1, v0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;
    invoke-static {v1}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->access$7(Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;)Lcom/bitmapfun/util/ImageFetcher;

    move-result-object v1

    invoke-virtual {v7}, Lic/buzzebeeslib/bean/Campaign;->FullImageUrlLarge()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v11, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->imgCampaign:Landroid/widget/ImageView;

    const/4 v4, 0x0

    sget v5, Lic/buzzebeeslib/R$drawable;->t1_1:I

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/bitmapfun/util/ImageFetcher;->loadImage(Ljava/lang/Object;Landroid/widget/ImageView;Landroid/widget/ProgressBar;IZ)V

    .line 1466
    :try_start_315
    move-object/from16 v0, p0

    iget-object v1, v0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->mGaTracker:Lcom/google/analytics/tracking/android/Tracker;
    invoke-static {v1}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->access$8(Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;)Lcom/google/analytics/tracking/android/Tracker;

    move-result-object v1

    const-string v2, "Marketplace"

    const-string v3, "View"

    iget-object v4, v7, Lic/buzzebeeslib/bean/Campaign;->Name:Ljava/lang/String;

    const-wide/16 v5, 0x1

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/google/analytics/tracking/android/Tracker;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_32c
    .catch Ljava/lang/Exception; {:try_start_315 .. :try_end_32c} :catch_32e

    goto/16 :goto_c2

    .line 1467
    :catch_32e
    move-exception v1

    goto/16 :goto_c2

    .line 1292
    .end local v8    # "campaign_type_final":Ljava/lang/String;
    .end local v9    # "campaign_website_final":Ljava/lang/String;
    .end local v12    # "intRemain":D
    .end local v14    # "point_per_unit":D
    :cond_331
    iget-object v1, v11, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->imgCardPtt:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_147

    .line 1305
    :cond_33a
    iget-object v1, v7, Lic/buzzebeeslib/bean/Campaign;->Type:Ljava/lang/String;

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_364

    .line 1306
    iget-object v1, v11, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvType:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    sget v3, Lic/buzzebeeslib/R$string;->campaign_list_type_free:I

    invoke-virtual {v2, v3}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1307
    iget-object v1, v11, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvType:Landroid/widget/TextView;

    const/16 v2, 0xdd

    const/16 v3, 0x59

    const/16 v4, 0x2b

    invoke-static {v2, v3, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_16f

    .line 1308
    :cond_364
    iget-object v1, v7, Lic/buzzebeeslib/bean/Campaign;->Type:Ljava/lang/String;

    const-string v2, "5"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_378

    iget-object v1, v7, Lic/buzzebeeslib/bean/Campaign;->Type:Ljava/lang/String;

    const-string v2, "6"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_398

    .line 1309
    :cond_378
    iget-object v1, v11, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvType:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    sget v3, Lic/buzzebeeslib/R$string;->campaign_list_type_earn:I

    invoke-virtual {v2, v3}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1310
    iget-object v1, v11, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvType:Landroid/widget/TextView;

    const/16 v2, 0xff

    const/16 v3, 0xae

    const/16 v4, 0xe

    invoke-static {v2, v3, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_16f

    .line 1311
    :cond_398
    iget-object v1, v7, Lic/buzzebeeslib/bean/Campaign;->Type:Ljava/lang/String;

    const-string v2, "8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3ec

    .line 1312
    iget-object v1, v7, Lic/buzzebeeslib/bean/Campaign;->PointType:Ljava/lang/String;

    const-string v2, "get"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3cc

    .line 1313
    iget-object v1, v11, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvType:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    sget v3, Lic/buzzebeeslib/R$string;->campaign_list_type_earn:I

    invoke-virtual {v2, v3}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1314
    iget-object v1, v11, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvType:Landroid/widget/TextView;

    const/16 v2, 0xff

    const/16 v3, 0xae

    const/16 v4, 0xe

    invoke-static {v2, v3, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_16f

    .line 1316
    :cond_3cc
    iget-object v1, v11, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvType:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    sget v3, Lic/buzzebeeslib/R$string;->campaign_list_type_free:I

    invoke-virtual {v2, v3}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1317
    iget-object v1, v11, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvType:Landroid/widget/TextView;

    const/16 v2, 0xdd

    const/16 v3, 0x59

    const/16 v4, 0x2b

    invoke-static {v2, v3, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_16f

    .line 1319
    :cond_3ec
    iget-object v1, v7, Lic/buzzebeeslib/bean/Campaign;->Type:Ljava/lang/String;

    const-string v2, "2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_435

    .line 1322
    iget-object v1, v11, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvType:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter;->formatter:Ljava/text/NumberFormat;

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

    const-string v3, "% OFF"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1323
    iget-object v1, v11, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvType:Landroid/widget/TextView;

    const/16 v2, 0x80

    const/4 v3, 0x3

    const/16 v4, 0xd

    invoke-static {v2, v3, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_16f

    .line 1324
    :cond_435
    iget-object v1, v7, Lic/buzzebeeslib/bean/Campaign;->Type:Ljava/lang/String;

    const-string v2, "3"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_47e

    .line 1325
    iget-object v1, v11, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvType:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter;->formatter:Ljava/text/NumberFormat;

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

    const-string v3, "% OFF"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1326
    iget-object v1, v11, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvType:Landroid/widget/TextView;

    const/16 v2, 0x80

    const/4 v3, 0x3

    const/16 v4, 0xd

    invoke-static {v2, v3, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_16f

    .line 1328
    :cond_47e
    iget-object v1, v11, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvType:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1329
    iget-object v1, v11, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvType:Landroid/widget/TextView;

    const/16 v2, 0xdd

    const/16 v3, 0x59

    const/16 v4, 0x2b

    invoke-static {v2, v3, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_16f

    .line 1337
    .restart local v14    # "point_per_unit":D
    :cond_496
    iget-object v1, v11, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvPoint:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter;->formatterHasDigi:Ljava/text/NumberFormat;

    invoke-virtual {v3, v14, v15}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    sget v4, Lic/buzzebeeslib/R$string;->market_points:I

    invoke-virtual {v3, v4}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1d0

    .line 1340
    :cond_4c6
    iget-object v1, v7, Lic/buzzebeeslib/bean/Campaign;->Type:Ljava/lang/String;

    const-string v2, "8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_604

    .line 1341
    iget-object v1, v7, Lic/buzzebeeslib/bean/Campaign;->PointType:Ljava/lang/String;

    const-string v2, "get"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_54e

    .line 1342
    const-wide/high16 v1, 0x3ff0000000000000L

    cmpg-double v1, v14, v1

    if-gtz v1, :cond_51f

    .line 1343
    iget-object v1, v11, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvPoint:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter;->formatterHasDigi:Ljava/text/NumberFormat;

    invoke-virtual {v3, v14, v15}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    sget v4, Lic/buzzebeeslib/R$string;->market_point:I

    invoke-virtual {v3, v4}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1347
    :goto_50e
    iget-object v1, v11, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->layoutAction:Landroid/widget/RelativeLayout;

    const/16 v2, 0xff

    const/16 v3, 0xae

    const/16 v4, 0xe

    invoke-static {v2, v3, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    goto/16 :goto_1df

    .line 1345
    :cond_51f
    iget-object v1, v11, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvPoint:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter;->formatterHasDigi:Ljava/text/NumberFormat;

    invoke-virtual {v3, v14, v15}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    sget v4, Lic/buzzebeeslib/R$string;->market_points:I

    invoke-virtual {v3, v4}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_50e

    .line 1349
    :cond_54e
    const-wide/high16 v1, 0x3ff0000000000000L

    cmpg-double v1, v14, v1

    if-gtz v1, :cond_5b0

    .line 1350
    iget-object v1, v11, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvPoint:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    sget v4, Lic/buzzebeeslib/R$string;->market_use:I

    invoke-virtual {v3, v4}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter;->formatterHasDigi:Ljava/text/NumberFormat;

    invoke-virtual {v3, v14, v15}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    sget v4, Lic/buzzebeeslib/R$string;->market_point:I

    invoke-virtual {v3, v4}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1354
    :goto_596
    sget-object v1, Lic/buzzebeeslib/LibConst;->PACKAGE_PARENT:Ljava/lang/String;

    const-string v2, "com.samsung.privilege"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5f3

    .line 1355
    iget-object v1, v11, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->layoutAction:Landroid/widget/RelativeLayout;

    const/4 v2, 0x2

    const/16 v3, 0x92

    const/16 v4, 0xca

    invoke-static {v2, v3, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    goto/16 :goto_1df

    .line 1352
    :cond_5b0
    iget-object v1, v11, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvPoint:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    sget v4, Lic/buzzebeeslib/R$string;->market_use:I

    invoke-virtual {v3, v4}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter;->formatterHasDigi:Ljava/text/NumberFormat;

    invoke-virtual {v3, v14, v15}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    sget v4, Lic/buzzebeeslib/R$string;->market_points:I

    invoke-virtual {v3, v4}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_596

    .line 1357
    :cond_5f3
    iget-object v1, v11, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->layoutAction:Landroid/widget/RelativeLayout;

    const/16 v2, 0xdd

    const/16 v3, 0x59

    const/16 v4, 0x2b

    invoke-static {v2, v3, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    goto/16 :goto_1df

    .line 1361
    :cond_604
    const-wide/high16 v1, 0x3ff0000000000000L

    cmpg-double v1, v14, v1

    if-gtz v1, :cond_666

    .line 1362
    iget-object v1, v11, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvPoint:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    sget v4, Lic/buzzebeeslib/R$string;->market_use:I

    invoke-virtual {v3, v4}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter;->formatterHasDigi:Ljava/text/NumberFormat;

    invoke-virtual {v3, v14, v15}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    sget v4, Lic/buzzebeeslib/R$string;->market_point:I

    invoke-virtual {v3, v4}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1366
    :goto_64c
    sget-object v1, Lic/buzzebeeslib/LibConst;->PACKAGE_PARENT:Ljava/lang/String;

    const-string v2, "com.samsung.privilege"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6a9

    .line 1367
    iget-object v1, v11, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->layoutAction:Landroid/widget/RelativeLayout;

    const/4 v2, 0x2

    const/16 v3, 0x92

    const/16 v4, 0xca

    invoke-static {v2, v3, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    goto/16 :goto_1df

    .line 1364
    :cond_666
    iget-object v1, v11, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvPoint:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    sget v4, Lic/buzzebeeslib/R$string;->market_use:I

    invoke-virtual {v3, v4}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter;->formatterHasDigi:Ljava/text/NumberFormat;

    invoke-virtual {v3, v14, v15}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    sget v4, Lic/buzzebeeslib/R$string;->market_points:I

    invoke-virtual {v3, v4}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_64c

    .line 1369
    :cond_6a9
    iget-object v1, v11, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->layoutAction:Landroid/widget/RelativeLayout;

    const/16 v2, 0xdd

    const/16 v3, 0x59

    const/16 v4, 0x2b

    invoke-static {v2, v3, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    goto/16 :goto_1df

    .line 1381
    :cond_6ba
    iget-object v1, v11, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvPrice:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1382
    iget-object v1, v11, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvPriceFull:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_274

    .line 1388
    :cond_6ca
    iget-object v1, v11, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvAction:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    sget v3, Lic/buzzebeeslib/R$string;->campaign_list_button_see_more:I

    invoke-virtual {v2, v3}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_28d

    .line 1436
    .restart local v8    # "campaign_type_final":Ljava/lang/String;
    .restart local v9    # "campaign_website_final":Ljava/lang/String;
    .restart local v12    # "intRemain":D
    :cond_6db
    const-wide/16 v1, 0x0

    cmpl-double v1, v12, v1

    if-lez v1, :cond_6f8

    const-wide/high16 v1, 0x4024000000000000L

    cmpg-double v1, v12, v1

    if-gez v1, :cond_6f8

    .line 1440
    iget-object v1, v11, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvStatus:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    sget v3, Lic/buzzebeeslib/R$string;->campaign_list_status_running_out:I

    invoke-virtual {v2, v3}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2ed

    .line 1441
    :cond_6f8
    iget v1, v7, Lic/buzzebeeslib/bean/Campaign;->DayProceed:I

    const/4 v2, 0x3

    if-gt v1, v2, :cond_714

    const-wide/16 v1, 0x0

    cmpl-double v1, v12, v1

    if-lez v1, :cond_714

    .line 1445
    iget-object v1, v11, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvStatus:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    sget v3, Lic/buzzebeeslib/R$string;->campaign_list_status_new:I

    invoke-virtual {v2, v3}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2ed

    .line 1448
    :cond_714
    iget-object v1, v11, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvStatus:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2ed
.end method
